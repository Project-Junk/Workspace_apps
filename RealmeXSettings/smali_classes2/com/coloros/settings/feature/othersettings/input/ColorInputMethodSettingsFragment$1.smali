.class final Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$1;
.super Ljava/lang/Object;
.source "ColorInputMethodSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$1;->a:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment$1;->a:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodSettingsFragment;->highlightPreferenceForce()V

    return-void
.end method
