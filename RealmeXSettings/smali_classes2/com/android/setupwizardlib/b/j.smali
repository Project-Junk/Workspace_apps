.class public Lcom/android/setupwizardlib/b/j;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/b/j$b;,
        Lcom/android/setupwizardlib/b/j$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/setupwizardlib/b/j$b;

.field private final b:Lcom/android/setupwizardlib/TemplateLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/android/setupwizardlib/b/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 2
    .param p1    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/b/j;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/setupwizardlib/b/j;->d:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/setupwizardlib/b/j;->e:Z

    .line 93
    iput-object p1, p0, Lcom/android/setupwizardlib/b/j;->b:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method static synthetic a(Lcom/android/setupwizardlib/b/j;)Lcom/android/setupwizardlib/b/j$a;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/setupwizardlib/b/j;->f:Lcom/android/setupwizardlib/b/j$a;

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/b/j;->c:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizardlib/b/j$1;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizardlib/b/j$1;-><init>(Lcom/android/setupwizardlib/b/j;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/setupwizardlib/b/j;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 239
    iget-boolean p1, p0, Lcom/android/setupwizardlib/b/j;->e:Z

    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/b/j;->b(Z)V

    .line 241
    iput-boolean v0, p0, Lcom/android/setupwizardlib/b/j;->d:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 244
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/b/j;->b(Z)V

    .line 245
    iput-boolean p1, p0, Lcom/android/setupwizardlib/b/j;->d:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/setupwizardlib/b/j;->e:Z

    :cond_2
    return-void
.end method
