.class final Lcom/coloros/settings/feature/sound/controller/e$1;
.super Ljava/lang/Object;
.source "ColorTouchVibrationUtils.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/sound/controller/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/e;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/controller/e;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/e$1;->a:Lcom/coloros/settings/feature/sound/controller/e;

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
    .locals 11

    const-string v0, "TouchVibrationController"

    const-string v1, "touch_vibration_intensity"

    .line 93
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/e$1;->a:Lcom/coloros/settings/feature/sound/controller/e;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v5

    .line 1106
    :goto_0
    :try_start_0
    iget-object v9, v2, Lcom/coloros/settings/feature/sound/controller/e;->b:Landroid/content/ContentResolver;

    const/4 v10, -0x2

    invoke-static {v9, v1, v4, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v8, :cond_3

    return-void

    .line 1110
    :cond_3
    iget-object v9, v2, Lcom/coloros/settings/feature/sound/controller/e;->b:Landroid/content/ContentResolver;

    invoke-static {v9, v1, v8, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eq v8, v4, :cond_5

    if-eq v8, v3, :cond_4

    move v1, v7

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v6

    .line 1113
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "updateTitleByIdex: EffectStrength: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ;level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v8, v2, Lcom/coloros/settings/feature/sound/controller/e;->a:Landroid/content/Context;

    const/4 v9, 0x7

    invoke-static {v8, v9, v1}, Lcom/coloros/settings/utils/bp;->b(Landroid/content/Context;II)V

    .line 1115
    iget-object v8, v2, Lcom/coloros/settings/feature/sound/controller/e;->a:Landroid/content/Context;

    invoke-static {v8, v7, v1}, Lcom/coloros/settings/utils/bp;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1117
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_7

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_8

    move v3, v7

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v6

    .line 1122
    :cond_8
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1123
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "level"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-object v0, v2, Lcom/coloros/settings/feature/sound/controller/e;->a:Landroid/content/Context;

    const-string v1, "20120"

    const-string v2, "event_touch_vibration_level"

    invoke-static {v0, v1, v2, p1, v7}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
