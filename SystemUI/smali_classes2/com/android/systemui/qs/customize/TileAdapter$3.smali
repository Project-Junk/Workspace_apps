.class Lcom/android/systemui/qs/customize/TileAdapter$3;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$300(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$200(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$600(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    :goto_0
    return-void
.end method