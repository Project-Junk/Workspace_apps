.class public final Lcom/coloros/settings/feature/deviceinfo/a;
.super Ljava/lang/Object;
.source "ColorRegulatoryInformationParser.java"


# static fields
.field private static a:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    sget-boolean v0, Lcom/coloros/settings/feature/deviceinfo/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/coloros/settings/feature/deviceinfo/a;->b:Z

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f1500d5

    invoke-static {v0, p0, v1}, Lcom/coloros/settings/feature/deviceinfo/d;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/deviceinfo/a;->a:Ljava/util/ArrayList;

    .line 32
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/deviceinfo/a;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
