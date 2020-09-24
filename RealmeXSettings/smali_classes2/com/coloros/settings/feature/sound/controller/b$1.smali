.class final Lcom/coloros/settings/feature/sound/controller/b$1;
.super Ljava/lang/Object;
.source "ColorCommonVibrationUtils.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/sound/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/controller/b;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/b$1;->a:Lcom/coloros/settings/feature/sound/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 8

    const-string v0, "ColorCommonVibrationUtils"

    const-string v1, "common_vibration_intensity"

    .line 91
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/b$1;->a:Lcom/coloros/settings/feature/sound/controller/b;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    goto :goto_0

    :cond_1
    move v5, v3

    .line 1104
    :cond_2
    :goto_0
    :try_start_0
    iget-object v6, v2, Lcom/coloros/settings/feature/sound/controller/b;->b:Landroid/content/ContentResolver;

    const/4 v7, -0x2

    invoke-static {v6, v1, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_3

    return-void

    .line 1108
    :cond_3
    iget-object v3, v2, Lcom/coloros/settings/feature/sound/controller/b;->b:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1149
    iget-object v1, v2, Lcom/coloros/settings/feature/sound/controller/b;->a:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_4

    const-wide/16 v6, 0x50

    .line 1151
    invoke-virtual {v1, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1113
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_4
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1118
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "level"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v2, v2, Lcom/coloros/settings/feature/sound/controller/b;->a:Landroid/content/Context;

    const-string v3, "20120"

    const-string v6, "event_common_vibration_level"

    invoke-static {v2, v3, v6, v1, v4}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTitleByIdex level = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
