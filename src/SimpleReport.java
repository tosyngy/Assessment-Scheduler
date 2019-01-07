
import java.util.HashMap;
import javax.swing.table.DefaultTableModel;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRTableModelDataSource;
import net.sf.jasperreports.view.JasperViewer;

public class SimpleReport {

    DefaultTableModel tableModel;

    public SimpleReport() {
        JasperPrint jasperPrint = null;
        TableModelData();
        try {
//              String filePath = new File("reports/myreport.jrxml").getAbsolutePath();
//                 filePath = new File("reports/myreport.jasper").getAbsolutePath();
//                 System.out.println(filePath);
//            JasperCompileManager.compileReportToFile("src/reports/myreport.jrxml");
//            jasperPrint = JasperFillManager.fillReport("src/reports/myreport.jasper", new HashMap(),
//                    new JRTableModelDataSource(tableModel));

            JasperCompileManager.compileReportToFile("src/reports/TimeTable.jrxml");
            jasperPrint = JasperFillManager.fillReport("src/reports/TimeTable.jasper", new HashMap(),
                    new JRTableModelDataSource(tableModel));
            JasperViewer jasperViewer = new JasperViewer(jasperPrint);
            jasperViewer.setVisible(true);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void TableModelData() {
        //     String[] columnNames = {"school"};
        String[] columnNames = {
            "COLUMN_61",
            "COLUMN_1",
            "COLUMN_2",
            "COLUMN_3",
            "COLUMN_4",
            "COLUMN_5",
            "COLUMN_6",
            "COLUMN_7",
            "COLUMN_8",
            "COLUMN_9",
            "COLUMN_10",
            "COLUMN_11",
            "COLUMN_12",
            "COLUMN_13",
            "COLUMN_14",
            "COLUMN_15",
            "COLUMN_16",
            "COLUMN_17",
            "COLUMN_18",
            "COLUMN_19",
            "COLUMN_20",
            "COLUMN_21",
            "COLUMN_22",
            "COLUMN_23",
            "COLUMN_24",
            "COLUMN_25",
            "COLUMN_26",
            "COLUMN_27",
            "COLUMN_28",
            "COLUMN_29",
            "COLUMN_30",
            
            "COLUMN_31",
            "COLUMN_32",
            "COLUMN_33",
            "COLUMN_34",
            "COLUMN_35",
            "COLUMN_36",
            "COLUMN_37",
            "COLUMN_38",
            "COLUMN_39",
            "COLUMN_40",
            "COLUMN_41",
            "COLUMN_42",
            "COLUMN_43",
            "COLUMN_44",
            "COLUMN_45",
            "COLUMN_46",
            "COLUMN_47",
            "COLUMN_48",
            "COLUMN_49",
            "COLUMN_50",
            "COLUMN_51",
            "COLUMN_52",
            "COLUMN_53",
            "COLUMN_54",
            "COLUMN_55",
            "COLUMN_56",
            "COLUMN_57",
            "COLUMN_58",
            "COLUMN_59",
            "COLUMN_60",
            
        };
        String[][] data = {
            {
                "DAY",
                "FT 1,1",
                "FT 1,2",
                "FT 1,3",
                "FT 2,1",
                "FT 2,2",
                "FT 2,3",
                "FT 1,1",
                "FT 1,2",
                "FT 1,3",
                "FT 2,1",
                "FT 2,2",
                "FT 2,3",
                "FT 4,1",
                "FT 4,2",
                "FT 4,3",
                "FT 5,1",
                "FT 5,2",
                "FT 5,3",
                "FT 6,1",
                "FT 6,2",
                "FT 6,3",
                "FT 7,1",
                "FT 7,2",
                "FT 7,3",
                "FT 8,1",
                "FT 8,2",
                "FT 8,3",
                "FT 9,1",
                "FT 9,2",
                "FT 9,3",
                "FT 10,1",
                "FT 10,2",
                "FT 10,3",
                
                "HFT 1,1",
                "HFT 1,2",
                "HFT 1,3",
                "HFT 2,1",
                "HFT 2,2",
                "HFT 2,3",
                "HFT 1,1",
                "HFT 1,2",
                "HFT 1,3",
                "HFT 2,1",
                "HFT 2,2",
                "HFT 2,3",
                "HFT 4,1",
                "HFT 4,2",
                "HFT 4,3",
                "HFT 5,1",
                "HFT 5,2",
                "HFT 5,3",
                "HFT 6,1",
                "HFT 6,2",
                "HFT 6,3",
                "HFT 7,1",
                "HFT 7,2",
                "HFT 7,3",
                "HFT 8,1",
                "HFT 8,2",
                "HFT 8,3",
                "HFT 9,1",
                "HFT 9,2",
                "HFT 9,3",
                "HFT 10,1",
                "HFT 10,2",
                "HFT 10,3",
            },
            {
                "DAY 1",
                //FOODTECH nd 1
                "",
                "DEPT 1,1 101",
                "",
                //FOODTECH nd 2
                "DEPT 1,2 103",
                "",
                "",
                //HOSPITALITY nd 1
                "DEPT 2,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 2,2 203",
                //FOODTECH nd 1
                "",
                "DEPT 3,1 101",
                "",
                //FOODTECH nd 2
                "DEPT 3,2 103",
                "",
                "",
                //HOSPITALITY nd 1
                "DEPT 4,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 4,2 203",
                "DEPT 5,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 5,2 203",
               //FOODTECH nd 1
                "",
                "DEPT 1,1 101",
                "",
                //FOODTECH nd 2
                "DEPT 1,2 103",
                "",
                "",
                //HOSPITALITY nd 1
                "DEPT 2,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 2,2 203",
                //FOODTECH nd 1
                "",
                "DEPT 3,1 101",
                "",
                //FOODTECH nd 2
                "DEPT 3,2 103",
                "",
                "",
                //HOSPITALITY nd 1
                "DEPT 4,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 4,2 203",
                "DEPT 5,1 101",
                "",
                "",
                //Hospitality nd 2
                "",
                "",
                "DEPT 5,2 203",
            },
            {
                "DAY 2",
                "DEPT 1,1 201",
                "",
                "",
                "DEPT 1,2 103",
                "",
                "",
                "DEPT 2,1 101",
                "",
                "",
                "",
                "",
                "DEPT 2,2 203",
                "",
                "",
                "DEPT 3,1 203",
                "",
                "",
                "DEPT 3,2 203",
                "",
                "",
                "DEPT 4,1 203",
                "",
                "",
                "DEPT 4,2 203",
                 "",
                "",
                "DEPT 5,1 203",
                "",
                "",
                "DEPT 5,2 203",
                "",
                 "DEPT 1,1 201",
                "",
                "",
                "DEPT 1,2 103",
                "",
                "",
                "DEPT 2,1 101",
                "",
                "",
                "",
                "",
                "DEPT 2,2 203",
                "",
                "",
                "DEPT 3,1 203",
                "",
                "",
                "DEPT 3,2 203",
                "",
                "",
                "DEPT 4,1 203",
                "",
                "",
                "DEPT 4,2 203",
                 "",
                "",
                "DEPT 5,1 203",
                "",
                "",
                "DEPT 5,2 203",
                "",
            },};
        tableModel = new DefaultTableModel(data, columnNames);
    }

    public static void main(String[] args) {
        new SimpleReport();
    }
}