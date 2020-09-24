.class final Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;
.super Ljava/lang/Object;
.source "IMEPositionPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "keyboard_position"

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 90
    :sswitch_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->c(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 83
    :sswitch_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->a(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->b(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;->c(Lcom/coloros/settings/feature/othersettings/input/IMEPositionPreference;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0326 -> :sswitch_1
        0x7f0a0327 -> :sswitch_0
        0x7f0a0544 -> :sswitch_1
        0x7f0a0545 -> :sswitch_0
    .end sparse-switch
.end method
