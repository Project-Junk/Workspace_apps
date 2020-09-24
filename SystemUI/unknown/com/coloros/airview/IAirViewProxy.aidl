// IAirViewGameProxy.aidl
package com.coloros.airview;

oneway interface IAirViewProxy {

    /**
     * display the view
     *
     * @param jasonData The type of jsonData is JSON, it is the content
     * what is used to display on the air view.
     */
    void display(String packageName, String jsonData);

    /**
     * close the view, if it is requested by the package
     */
    void cancel(String packageName);
}
