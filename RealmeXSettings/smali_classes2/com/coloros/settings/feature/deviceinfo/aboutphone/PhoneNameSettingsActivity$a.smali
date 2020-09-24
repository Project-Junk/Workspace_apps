.class public final Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;
.super Ljava/lang/Object;
.source "PhoneNameSettingsActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:J

.field private c:Landroid/widget/Toast;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->d:Landroid/content/Context;

    const-string v0, "\u2b55|\u2b50|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]|[\ud83e\udd00-\ud83e\uddff]|[\u2300-\u23ff]|[\u2500-\u25ff]|[\u2b00-\u2bff]|[\u2d06]|[\u3030]|[\u2049]|[\u203c]|[\u2934\ufe0f]|[\u2935]|[\u3299]|[\u303d]|[\u2150-\u21ff]|[#*0-9]\ufe0f?\u20e3|[\ud83e\ude00-\ud83e\udeff]"

    const/16 v1, 0x42

    .line 272
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->e:Ljava/util/regex/Pattern;

    .line 288
    iput p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->a:I

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 300
    iget-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 303
    iget-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->c:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 304
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->d:Landroid/content/Context;

    .line 305
    iget-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->d:Landroid/content/Context;

    const v2, 0x7f120fd5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->c:Landroid/widget/Toast;

    .line 307
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 308
    iget-wide v5, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->b:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x898

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 309
    iget-object v3, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->c:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 310
    iput-wide v1, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->b:J

    :cond_1
    return-object v4

    :cond_2
    move/from16 v3, p2

    move v6, v5

    :goto_0
    const/16 v9, 0x800

    const/16 v10, 0x80

    const/4 v11, 0x1

    if-ge v3, v2, :cond_5

    .line 317
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ge v12, v10, :cond_3

    goto :goto_1

    :cond_3
    if-ge v12, v9, :cond_4

    const/4 v11, 0x2

    goto :goto_1

    :cond_4
    const/4 v11, 0x3

    :goto_1
    add-int/2addr v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_5
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move v12, v5

    move v13, v12

    :goto_2
    if-ge v12, v3, :cond_a

    move/from16 v14, p5

    if-lt v12, v14, :cond_7

    move/from16 v15, p6

    if-lt v12, v15, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v7, p4

    goto :goto_5

    :cond_7
    move/from16 v15, p6

    :goto_3
    move-object/from16 v7, p4

    .line 326
    invoke-interface {v7, v12}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    if-ge v8, v10, :cond_8

    move v8, v11

    goto :goto_4

    :cond_8
    if-ge v8, v9, :cond_9

    const/4 v8, 0x2

    goto :goto_4

    :cond_9
    const/4 v8, 0x3

    :goto_4
    add-int/2addr v13, v8

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 331
    :cond_a
    iget v3, v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;->a:I

    sub-int/2addr v3, v13

    if-gtz v3, :cond_b

    return-object v4

    :cond_b
    const/4 v4, 0x0

    if-lt v3, v6, :cond_c

    return-object v4

    :cond_c
    move v6, v3

    move/from16 v3, p2

    :goto_6
    if-ge v3, v2, :cond_11

    .line 339
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v10, :cond_d

    move v7, v11

    goto :goto_7

    :cond_d
    if-ge v7, v9, :cond_e

    const/4 v7, 0x2

    goto :goto_7

    :cond_e
    const/4 v7, 0x3

    :goto_7
    sub-int/2addr v6, v7

    if-nez v6, :cond_f

    add-int/lit8 v7, v2, -0x1

    if-ge v3, v7, :cond_f

    add-int/2addr v3, v11

    .line 344
    invoke-interface {v1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_f
    if-gtz v6, :cond_10

    .line 346
    invoke-interface {v1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    return-object v4
.end method
