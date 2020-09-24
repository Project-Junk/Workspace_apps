.class public final Lcom/android/setupwizardlib/b/f;
.super Ljava/lang/Object;
.source "ListViewScrollHandlingDelegate.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/setupwizardlib/b/j$b;


# instance fields
.field private final a:Lcom/android/setupwizardlib/b/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/b/j;Landroid/widget/ListView;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/b/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/setupwizardlib/b/f;->a:Lcom/android/setupwizardlib/b/j;

    .line 49
    iput-object p2, p0, Lcom/android/setupwizardlib/b/f;->b:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/setupwizardlib/b/f;->a:Lcom/android/setupwizardlib/b/j;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/b/j;->a(Z)V

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/setupwizardlib/b/f;->a:Lcom/android/setupwizardlib/b/j;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/b/j;->a(Z)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
