.class public final Lcom/color/darkmode/ui/activity/DarkModeApplicationManageActivity;
.super Lcom/color/darkmode/base/BasePreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/base/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFragment()Lcom/color/darkmode/base/BasePreferenceFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/color/darkmode/ui/activity/DarkModeApplicationManageActivity;->getFragment()Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    move-result-object p0

    check-cast p0, Lcom/color/darkmode/base/BasePreferenceFragment;

    return-object p0
.end method

.method public getFragment()Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;
    .locals 0

    new-instance p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;

    invoke-direct {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;-><init>()V

    return-object p0
.end method
