.class public final synthetic Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

.field private final synthetic f$1:Lcom/android/settingslib/g$a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;Lcom/android/settingslib/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;->f$0:Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;->f$1:Lcom/android/settingslib/g$a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;->f$0:Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/-$$Lambda$SettingsBrightnessPreference$AqKnztjTKj50o67yaYy3dvU2x-M;->f$1:Lcom/android/settingslib/g$a;

    invoke-static {v0, v1, p1, p2}, Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;->lambda$AqKnztjTKj50o67yaYy3dvU2x-M(Lcom/coloros/settings/feature/display/SettingsBrightnessPreference;Lcom/android/settingslib/g$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
