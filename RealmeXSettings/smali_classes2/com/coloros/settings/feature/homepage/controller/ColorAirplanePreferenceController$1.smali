.class final Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;
.super Ljava/lang/Object;
.source "ColorAirplanePreferenceController.java"

# interfaces
.implements Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->setOnLoadingStateChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartLoading()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 86
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {v2, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$100(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$200(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;->sendEmptyMessage(I)Z

    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$300(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/android/settings/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/a;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$200(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onStopLoading()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->access$400(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/color/support/preference/ColorSwitchLoadingPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchLoadingPreference;->setChecked(Z)V

    return-void
.end method
