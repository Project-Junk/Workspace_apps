.class final Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;
.super Ljava/lang/Object;
.source "ModuleLicensesPreferenceController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/content/pm/ModuleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/pm/ModuleInfo;)Z
    .locals 1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;->a:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/legal/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, ""

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "NOTICE.html.gz"

    .line 67
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 58
    check-cast p1, Landroid/content/pm/ModuleInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;->a(Landroid/content/pm/ModuleInfo;)Z

    move-result p1

    return p1
.end method
