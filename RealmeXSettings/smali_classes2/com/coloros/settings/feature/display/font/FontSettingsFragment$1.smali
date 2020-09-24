.class final Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;
.super Ljava/lang/Object;
.source "FontSettingsFragment.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/font/FontSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/font/FontSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/font/FontSettingsFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;->a:Lcom/coloros/settings/feature/display/font/FontSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;->a:Lcom/coloros/settings/feature/display/font/FontSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Lcom/coloros/settings/feature/display/font/FontSettingsFragment;IZ)V

    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/display/font/FontSettingsFragment$1;->a:Lcom/coloros/settings/feature/display/font/FontSettingsFragment;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/display/font/FontSettingsFragment;->a(Lcom/coloros/settings/feature/display/font/FontSettingsFragment;IZ)V

    return-void
.end method
