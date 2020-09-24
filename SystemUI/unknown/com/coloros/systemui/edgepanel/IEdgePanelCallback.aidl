// IEdgePanelControl.aidl
package com.coloros.systemui.edgepanel;

// Declare any non-default types here with import statements
oneway interface IEdgePanelCallback {
    /**
     * Called when the docked stack gets created or removed.
     */
    void onDockedStackExistsChanged(boolean exists);
    /**
     * Called when the edge panel is minimized(removed), but float bar still exists.
     */
    void onMinimize(boolean anim);
}
