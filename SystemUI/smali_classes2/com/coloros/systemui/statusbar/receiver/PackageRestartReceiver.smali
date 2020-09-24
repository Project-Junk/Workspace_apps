.class public Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "PackageRestartReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeRegister(Landroid/content/IntentFilter;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->beforeRegister(Landroid/content/IntentFilter;)V

    const-string p0, "package"

    .line 35
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.PACKAGE_RESTARTED"

    .line 27
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
