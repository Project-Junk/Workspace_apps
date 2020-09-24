.class final Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/items/RecyclerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/setupdesign/items/f;

.field final synthetic b:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/f;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->b:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iput-object p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->a:Lcom/google/android/setupdesign/items/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->a:Lcom/google/android/setupdesign/items/f;

    .line 1055
    iget-object p1, p1, Lcom/google/android/setupdesign/items/f;->b:Lcom/google/android/setupdesign/items/b;

    .line 154
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->b:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/setupdesign/items/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->b:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-static {p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->a(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$a;

    :cond_0
    return-void
.end method
