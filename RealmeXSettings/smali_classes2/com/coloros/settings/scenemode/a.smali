.class public final Lcom/coloros/settings/scenemode/a;
.super Ljava/lang/Object;
.source "SceneContents.java"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.coloros.smartdrive.data.DataProvider/smart_drive_settings"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/scenemode/a;->a:Landroid/net/Uri;

    return-void
.end method
