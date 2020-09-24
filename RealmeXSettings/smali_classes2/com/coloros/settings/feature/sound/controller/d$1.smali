.class final Lcom/coloros/settings/feature/sound/controller/d$1;
.super Ljava/lang/Object;
.source "ColorRingVibrationUtils.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSectionSeekBar$OnSectionSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/sound/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/d;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/controller/d;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/d$1;->a:Lcom/coloros/settings/feature/sound/controller/d;

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
    .locals 10

    const-string v0, "ring_vibration_intensity"

    const-string v1, "ColorRingVibrationUtils"

    .line 100
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/d$1;->a:Lcom/coloros/settings/feature/sound/controller/d;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->getThumbIndex()I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v6

    .line 1113
    :cond_4
    :goto_0
    :try_start_0
    iget-object v8, v2, Lcom/coloros/settings/feature/sound/controller/d;->b:Landroid/content/ContentResolver;

    const/4 v9, -0x2

    invoke-static {v8, v0, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v3, :cond_5

    return-void

    .line 1117
    :cond_5
    iget-object v8, v2, Lcom/coloros/settings/feature/sound/controller/d;->b:Landroid/content/ContentResolver;

    invoke-static {v8, v0, v3, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_7

    if-eq v3, v4, :cond_8

    :cond_6
    move v5, v7

    goto :goto_1

    :cond_7
    move v5, v6

    .line 1120
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "updateTitleByIdex: EffectStrength: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ;level: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, v2, Lcom/coloros/settings/feature/sound/controller/d;->a:Landroid/content/Context;

    invoke-static {v0, v7, v5}, Lcom/coloros/settings/utils/bp;->b(Landroid/content/Context;II)V

    .line 1122
    iget-object v0, v2, Lcom/coloros/settings/feature/sound/controller/d;->a:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-static {v0, v4, v5}, Lcom/coloros/settings/utils/bp;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1124
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1129
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "level"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    iget-object v2, v2, Lcom/coloros/settings/feature/sound/controller/d;->a:Landroid/content/Context;

    const-string v4, "20120"

    const-string v5, "event_ring_vibration_level"

    invoke-static {v2, v4, v5, v0, v7}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setLevel level = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
