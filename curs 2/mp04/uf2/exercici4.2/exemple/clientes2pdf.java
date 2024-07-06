import java.io.File;
import java.io.FileOutputStream;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class XmlToPdf {
  public static void main(String[] args) throws Exception {
    TransformerFactory transformerFactory = TransformerFactory.newInstance();
    Transformer transformer = transformerFactory.newTransformer(new StreamSource(new File("clientes.xsl")));
    transformer.transform(new StreamSource(new File("clientes.xml")), new StreamResult(new FileOutputStream(new File("clientes.pdf"))));
  }
}

