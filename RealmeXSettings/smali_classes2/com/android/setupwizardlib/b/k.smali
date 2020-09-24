.class public final Lcom/android/setupwizardlib/b/k;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/j$b;
.implements Lcom/android/setupwizardlib/view/BottomScrollView$a;


# instance fields
.field private final a:Lcom/android/setupwizardlib/b/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/android/setupwizardlib/view/BottomScrollView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/b/j;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/b/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/setupwizardlib/b/k;->a:Lcom/android/setupwizardlib/b/j;

    .line 47
    instance-of p1, p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz p1, :cond_0

    .line 48
    check-cast p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    iput-object p2, p0, Lcom/android/setupwizardlib/b/k;->b:Lcom/android/setupwizardlib/view/BottomScrollView;

    return-void

    .line 50
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollViewDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/setupwizardlib/b/k;->b:Lcom/android/setupwizardlib/view/BottomScrollView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/setupwizardlib/b/k;->a:Lcom/android/setupwizardlib/b/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/b/j;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/setupwizardlib/b/k;->a:Lcom/android/setupwizardlib/b/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/b/j;->a(Z)V

    return-void
.end method
