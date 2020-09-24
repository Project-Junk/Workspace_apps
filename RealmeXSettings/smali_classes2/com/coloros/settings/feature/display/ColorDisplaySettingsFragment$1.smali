.class final Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment$1;
.super Lcom/android/settings/search/a;
.source "ColorDisplaySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/ColorDisplaySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "surface_light"

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "realme_surface_light"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "font_size"

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "font_settings"

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "screen_reminder"

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_protect_eyes"

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_color_mode"

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_display_compat"

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "display_settings_screen_zoom"

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_video_display_enhancement"

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_osie"

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_iris5"

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_dark_mode"

    .line 280
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tai_lue_support"

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {p1}, Lcom/coloros/settings/utils/bh;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "press_key_backlight"

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "screen_refresh_rate"

    .line 285
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "screen_resolution"

    .line 286
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ambient_display_notification"

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {}, Lcom/coloros/settings/utils/bh;->n()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "intelligent_color_temperature_adjustment"

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    invoke-static {}, Lcom/coloros/settings/utils/bh;->m()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_dc_backlight_mode"

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ColorKeepOnLookingController;->availabilityStatus(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "key_keep_on_looking"

    .line 295
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v1, "font_size_key"

    .line 208
    iput-object v1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v1, 0x7f08098e

    .line 209
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f121702

    .line 210
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    .line 211
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {p1, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v3, "oppo.intent.action.OPPO_FONT_SETTINGS"

    .line 214
    iput-object v3, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 215
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "font_settings_key"

    .line 220
    iput-object v3, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 221
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v3, 0x7f120f52

    .line 222
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 223
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-static {p1, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const-string v3, "com.nearme.themespace.SET_FONT"

    .line 226
    iput-object v3, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 227
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "key_display_compat_key"

    .line 232
    iput-object v3, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 233
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v3, 0x7f1212e4

    .line 234
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 235
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-static {p1, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 237
    const-class v3, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 238
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "display_settings_screen_zoom_key"

    .line 241
    iput-object v3, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 242
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v3, 0x7f12133b

    .line 243
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 244
    new-array v3, v2, [I

    fill-array-data v3, :array_3

    invoke-static {p1, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 247
    const-class v3, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 248
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "key_video_display_enhancement_swith"

    .line 252
    iput-object v3, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 253
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v1, 0x7f12187b

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 255
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    invoke-static {p1, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 258
    const-class p1, Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 259
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2

    nop

    :array_0
    .array-data 4
        0x7f1207fe
        0x7f121702
    .end array-data

    :array_1
    .array-data 4
        0x7f1207fe
        0x7f120f52
    .end array-data

    :array_2
    .array-data 4
        0x7f1207fe
        0x7f1212e4
    .end array-data

    :array_3
    .array-data 4
        0x7f1207fe
        0x7f12133b
    .end array-data

    :array_4
    .array-data 4
        0x7f1207fe
        0x7f12187b
    .end array-data
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15004a

    .line 198
    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f08098e

    .line 199
    iput p1, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 200
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
