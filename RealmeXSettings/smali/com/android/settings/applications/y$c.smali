.class public Lcom/android/settings/applications/y$c;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Z

.field final b:I

.field public c:Landroid/content/pm/PackageItemInfo;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:J

.field i:J

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z

.field m:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-boolean p1, p0, Lcom/android/settings/applications/y$c;->a:Z

    .line 359
    iput p2, p0, Lcom/android/settings/applications/y$c;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/android/settings/applications/y;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 363
    iget-object p1, p0, Lcom/android/settings/applications/y$c;->c:Landroid/content/pm/PackageItemInfo;

    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p2, Lcom/android/settings/applications/y;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageItemInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 365
    iget-object p2, p2, Lcom/android/settings/applications/y;->e:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings/applications/y$c;->b:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
