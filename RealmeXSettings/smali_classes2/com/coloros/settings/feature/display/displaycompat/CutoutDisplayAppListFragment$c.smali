.class final Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;
.super Landroid/content/pm/PackageInfo;
.source "CutoutDisplayAppListFragment.java"

# interfaces
.implements Lcom/coloros/settingslib/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/pm/PackageInfo;

.field b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

.field private d:C

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .line 401
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->c:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-direct {p0}, Landroid/content/pm/PackageInfo;-><init>()V

    const/16 v0, 0x30

    .line 397
    iput-char v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->d:C

    .line 399
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->c:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->b:Landroid/graphics/drawable/Drawable;

    .line 402
    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a:Landroid/content/pm/PackageInfo;

    .line 403
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->packageName:Ljava/lang/String;

    .line 405
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->e:Ljava/lang/String;

    .line 406
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(C)V
    .locals 0

    .line 436
    iput-char p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->d:C

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()C
    .locals 1

    .line 441
    iget-char v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->d:C

    return v0
.end method
