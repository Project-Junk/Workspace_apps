.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/core/f/t;->t(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, Landroidx/core/f/t;->t(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$h;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
