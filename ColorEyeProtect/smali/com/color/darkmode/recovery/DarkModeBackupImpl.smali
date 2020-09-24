.class public final Lcom/color/darkmode/recovery/DarkModeBackupImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/common/recovery/ICommonBackupInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/color/darkmode/recovery/DarkModeXmlComposer;->INSTANCE:Lcom/color/darkmode/recovery/DarkModeXmlComposer;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/recovery/DarkModeXmlComposer;->addDarkModeData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
