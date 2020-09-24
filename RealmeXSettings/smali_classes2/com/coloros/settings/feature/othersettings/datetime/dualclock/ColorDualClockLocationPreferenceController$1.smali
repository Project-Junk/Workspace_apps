.class final Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorDualClockLocationPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/Preference;

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;->a:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController$1;->a:Landroidx/preference/Preference;

    invoke-static {v0, p2, v1}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;->access$100(Lcom/coloros/settings/feature/othersettings/datetime/dualclock/ColorDualClockLocationPreferenceController;ILandroidx/preference/Preference;)V

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
