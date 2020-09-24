.class public final Lcom/google/android/setupdesign/b/j;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/b/i$b;
.implements Lcom/google/android/setupdesign/view/BottomScrollView$a;


# instance fields
.field private final a:Lcom/google/android/setupdesign/b/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/google/android/setupdesign/view/BottomScrollView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/b/i;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1    # Lcom/google/android/setupdesign/b/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ScrollView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/setupdesign/b/j;->a:Lcom/google/android/setupdesign/b/i;

    .line 43
    instance-of p1, p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p1, :cond_0

    .line 44
    check-cast p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    iput-object p2, p0, Lcom/google/android/setupdesign/b/j;->b:Lcom/google/android/setupdesign/view/BottomScrollView;

    return-void

    .line 46
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollViewDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/google/android/setupdesign/b/j;->b:Lcom/google/android/setupdesign/view/BottomScrollView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/setupdesign/b/j;->a:Lcom/google/android/setupdesign/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/b/i;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/android/setupdesign/b/j;->a:Lcom/google/android/setupdesign/b/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/b/i;->a(Z)V

    return-void
.end method
