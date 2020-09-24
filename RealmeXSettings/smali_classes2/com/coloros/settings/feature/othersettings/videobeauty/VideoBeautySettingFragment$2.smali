.class final Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;
.super Ljava/lang/Object;
.source "VideoBeautySettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 150
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->c(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)[I

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 152
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->c(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const-string v1, "["

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "]"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->d(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->e(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment$2;->a:Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;->a(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautySettingFragment;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
