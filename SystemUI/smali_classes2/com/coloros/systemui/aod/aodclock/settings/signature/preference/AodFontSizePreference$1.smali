.class Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference$1;
.super Ljava/lang/Object;
.source "AodFontSizePreference.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;

    invoke-static {p0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodFontSizePreference;I)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    return-void
.end method
