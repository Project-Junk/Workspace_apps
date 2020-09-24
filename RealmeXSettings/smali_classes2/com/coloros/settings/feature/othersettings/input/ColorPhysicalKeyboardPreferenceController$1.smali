.class final Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorPhysicalKeyboardPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;->a:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$1;->a:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorPhysicalKeyboardPreferenceController$a;->a(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
