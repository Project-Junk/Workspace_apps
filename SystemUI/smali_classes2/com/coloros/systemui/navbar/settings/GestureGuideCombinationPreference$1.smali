.class Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;
.super Ljava/lang/Object;
.source "GestureGuideCombinationPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {v0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    instance-of v0, p1, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 47
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 48
    check-cast v0, Landroid/view/View;

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 51
    :cond_1
    check-cast p1, Landroid/widget/CheckBox;

    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 54
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    .line 55
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;->onGestureModeChange(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 61
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 62
    check-cast p1, Landroid/widget/CheckBox;

    .line 63
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mIsChecked:Z

    .line 66
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p1}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$100(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$1;->this$0:Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;->access$000(Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference;)Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$ItemInfo;->mKey:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/coloros/systemui/navbar/settings/GestureGuideCombinationPreference$OnGestureModeChangeListener;->onGestureModeChange(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
