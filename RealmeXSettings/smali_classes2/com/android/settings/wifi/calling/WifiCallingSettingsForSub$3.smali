.class final Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->setResultCode(I)V

    .line 229
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;->a:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
