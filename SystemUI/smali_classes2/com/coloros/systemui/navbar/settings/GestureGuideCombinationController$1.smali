.class Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;
.super Ljava/lang/Object;
.source "GestureGuideCombinationController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    instance-of p2, p1, Landroid/widget/CheckBox;

    if-eqz p2, :cond_4

    .line 55
    iget-object p2, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p2}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$200(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$200(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$200(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;->access$200(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationController;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
