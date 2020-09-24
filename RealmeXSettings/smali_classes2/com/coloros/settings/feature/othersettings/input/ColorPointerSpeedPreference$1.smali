.class final Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "ColorPointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$1;->a:Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a(Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;)V

    return-void
.end method
