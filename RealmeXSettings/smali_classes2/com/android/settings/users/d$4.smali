.class final Lcom/android/settings/users/d$4;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListPopupWindow;

.field final synthetic b:Lcom/android/settings/users/d;


# direct methods
.method constructor <init>(Lcom/android/settings/users/d;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/users/d$4;->b:Lcom/android/settings/users/d;

    iput-object p2, p0, Lcom/android/settings/users/d$4;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 193
    iget-object p2, p0, Lcom/android/settings/users/d$4;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 195
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/users/d$a;

    .line 1452
    iget-boolean p2, p1, Lcom/android/settings/users/d$a;->d:Z

    if-nez p2, :cond_1

    .line 1439
    invoke-virtual {p1}, Lcom/android/settings/users/d$a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1440
    iget-object p2, p1, Lcom/android/settings/users/d$a;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/users/d$a;->c:Lcom/android/settingslib/g$a;

    invoke-static {p2, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 1444
    :cond_0
    iget-object p1, p1, Lcom/android/settings/users/d$a;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
