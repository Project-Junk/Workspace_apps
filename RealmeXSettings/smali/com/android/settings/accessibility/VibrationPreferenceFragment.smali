.class public abstract Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;,
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->b:Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;

    return-void
.end method

.method private h()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->e_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/g;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$eCaYzS8uL-Zk4PJDIfIkx6zIf2c;

    .line 205
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Tried to set unknown intensity (key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VibrationPreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4114
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 4115
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->e_()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apply_ramping_ringer"

    .line 4118
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v5, v2

    goto :goto_2

    .line 4122
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4121
    invoke-static {v5, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_2
    if-eq p1, v5, :cond_5

    .line 4124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4125
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 4128
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4132
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4133
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->d_()Ljava/lang/String;

    move-result-object v4

    .line 4132
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_5

    .line 4134
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 4143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->e()V

    :cond_5
    if-nez p1, :cond_6

    .line 4150
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->h()Z

    move-result p1

    if-nez p1, :cond_7

    .line 4152
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 4153
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->d_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    move-result v3

    .line 4152
    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    :cond_7
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    return v2
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->d_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->f_()I

    move-result v2

    .line 211
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->e_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply_ramping_ringer"

    .line 214
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v1, v4

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 217
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    move v0, v3

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    .line 223
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d()I

    move-result v5

    if-ne v5, v0, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    .line 2271
    :goto_2
    iget-object v6, v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->a:Ljava/lang/String;

    const-string v7, "intensity_on"

    .line 224
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-nez v5, :cond_6

    if-eqz v6, :cond_3

    .line 3271
    :cond_6
    iget-object v0, v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->a:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d_()Ljava/lang/String;
.end method

.method protected final e()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    .line 188
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 191
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method protected abstract e_()Ljava/lang/String;
.end method

.method protected abstract f_()I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->b:Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;->a()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "intensity_off"

    if-eqz p1, :cond_0

    .line 1083
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v3, 0x7f1200b4

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v1, 0x7f1200b2

    const/4 v2, 0x1

    const-string v3, "intensity_low"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v1, 0x7f1200b3

    const/4 v2, 0x2

    const-string v3, "intensity_medium"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v1, 0x7f1200b1

    const/4 v2, 0x3

    const-string v3, "intensity_high"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v3, 0x7f12163c

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->a:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;

    const v1, 0x7f12163e

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->f_()I

    move-result v2

    const-string v3, "intensity_on"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    .line 1103
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onDetach()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->b:Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;

    .line 1290
    iget-object v1, v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$a;->a:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
