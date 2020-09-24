.class public final Lcom/android/settings/core/e;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Preference"

    const-string v1, "PreferenceCategory"

    const-string v2, "PreferenceScreen"

    const-string v3, "com.android.settings.widget.WorkOnlyCategory"

    .line 56
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/e;->a:Ljava/util/List;

    const-string v0, "com.coloros.settings.widget.preference.SettingsColorPreferenceCategory"

    const-string v1, "androidx.preference.PreferenceCategory"

    const-string v2, "androidx.preference.PreferenceScreen"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/e;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.android.internal.R.styleable.Preference"

    .line 130
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "com.android.internal.R.styleable.Preference_title"

    .line 131
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1289
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1290
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1291
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static a(Landroid/content/Context;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_0

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreferenceXmlParserUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 198
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 202
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 203
    invoke-static {p2, v3}, Lcom/android/settings/core/e;->a(II)Z

    move-result v5

    :cond_3
    if-ne v1, v2, :cond_13

    .line 208
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_4

    const-string v6, "PreferenceScreen"

    .line 209
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 213
    :cond_4
    sget-object v6, Lcom/android/settings/core/e;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Preference"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/settings/core/e;->b:Ljava/util/List;

    .line 214
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 218
    :cond_5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 219
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 221
    sget-object v8, Lcom/android/settings/g$a;->Preference:[I

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    .line 225
    sget-object v9, Lcom/android/settings/g$a;->PreferenceScreen:[I

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    :cond_6
    const/4 v7, 0x4

    .line 229
    invoke-static {p2, v7}, Lcom/android/settings/core/e;->a(II)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "type"

    .line 230
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_7
    invoke-static {p2, v2}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "key"

    const-string v7, "com.android.internal.R.styleable.Preference_key"

    .line 1323
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v1, 0x8

    .line 235
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "controller"

    const/16 v7, 0x12

    .line 1335
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v1, 0x10

    .line 239
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "title"

    const-string v7, "com.android.internal.R.styleable.Preference_title"

    .line 2327
    invoke-static {v7}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v1, 0x20

    .line 242
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "summary"

    const-string v10, "com.android.internal.R.styleable.Preference_summary"

    .line 2331
    invoke-static {v10}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 243
    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v7, 0x40

    .line 245
    invoke-static {p2, v7}, Lcom/android/settings/core/e;->a(II)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_c

    const-string v7, "icon"

    const-string v11, "com.android.internal.R.styleable.Icon_icon"

    .line 2339
    invoke-static {v11}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 246
    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const/16 v7, 0x80

    .line 248
    invoke-static {p2, v7}, Lcom/android/settings/core/e;->a(II)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "platform_slice"

    .line 2343
    invoke-virtual {v8, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 249
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    const/16 v1, 0x100

    .line 252
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "keywords"

    const/16 v7, 0x1c

    .line 2351
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/16 v1, 0x200

    .line 255
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "searchable"

    const/16 v7, 0x21

    .line 3347
    invoke-virtual {v8, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 256
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    const/16 v1, 0x400

    .line 259
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v5, :cond_11

    const-string v1, "staticPreferenceLocation"

    .line 3355
    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v3, :cond_10

    move v10, v3

    .line 260
    :cond_10
    invoke-virtual {v6, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    const/16 v1, 0x800

    .line 263
    invoke-static {p2, v1}, Lcom/android/settings/core/e;->a(II)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "unavailable_slice_subtitle"

    const/16 v7, 0x27

    .line 3360
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_12
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    :cond_13
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_14

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    .line 271
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v6, v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 273
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_14
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :goto_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 276
    throw p0
.end method

.method private static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
