.class public final Lcom/coloros/settings/feature/deviceinfo/controller/l;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorSerialNumberPreferenceController.java"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "serial_number"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1050
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "persist.sys.oppo.serialno"

    .line 1051
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1052
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p1

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "serial_number"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
