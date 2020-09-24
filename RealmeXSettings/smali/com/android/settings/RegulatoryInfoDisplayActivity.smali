.class public Lcom/android/settings/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "regulatory_info"

    .line 51
    iput-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050038

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 69
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12121f

    .line 70
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ro.boot.hardware.sku"

    const-string v2, ""

    .line 2163
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const-string v3, "/data/misc/elabel/regulatory_info.png"

    goto :goto_0

    .line 1171
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v5, [Ljava/lang/Object;

    .line 1172
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v3, "/data/misc/elabel/regulatory_info_%s.png"

    .line 1171
    invoke-static {v4, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    if-nez v4, :cond_5

    .line 3125
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3126
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    const-string v10, "regulatory_info"

    .line 3125
    invoke-virtual {v7, v10, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3163
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "regulatory_info_"

    if-nez v8, :cond_3

    .line 3131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3132
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 3133
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3132
    invoke-virtual {v11, v8, v9, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    move v7, v8

    :cond_3
    const-string v8, "ro.boot.hardware.coo"

    .line 4159
    invoke-static {v8, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3144
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3145
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3144
    invoke-virtual {v2, v1, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v7

    goto :goto_2

    :cond_5
    move v1, v6

    :goto_2
    if-eqz v1, :cond_6

    .line 88
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v7, 0x2

    if-le v4, v7, :cond_7

    .line 92
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v7, :cond_7

    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v4

    :catch_0
    :cond_7
    :goto_3
    const v2, 0x7f12121e

    .line 98
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz v6, :cond_9

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d029b

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a0550

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 106
    :cond_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_4
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void

    .line 110
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 111
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    .line 114
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    .line 118
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    return-void
.end method
