.class Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;
.super Ljava/lang/Object;
.source "DndAlertActivity.java"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->displayDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/dnd/DndAlertActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;->this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(IZ)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;->this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    const/4 p2, 0x0

    const-string v0, "preference_dnd_first_notice"

    invoke-virtual {p1, v0, p2}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "key_donot_show_anymore"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;->this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "action_agree_dnd"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;->this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->finish()V

    goto :goto_0

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/dnd/DndAlertActivity$1;->this$0:Lcom/coloros/systemui/notification/dnd/DndAlertActivity;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/dnd/DndAlertActivity;->finish()V

    :goto_0
    return-void
.end method
