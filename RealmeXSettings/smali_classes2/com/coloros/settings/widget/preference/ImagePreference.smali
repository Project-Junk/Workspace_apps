.class public Lcom/coloros/settings/widget/preference/ImagePreference;
.super Landroidx/preference/Preference;
.source "ImagePreference.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "ImagePreference"

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->a:I

    const p2, 0x7f0d01a2

    .line 54
    invoke-virtual {p0, p2}, Lcom/coloros/settings/widget/preference/ImagePreference;->setLayoutResource(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ImagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-eqz p2, :cond_3

    :try_start_0
    const-string p2, "ro.oppo.screen.heteromorphism"

    .line 1130
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "cutout size: "

    .line 1131
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "[,:]"

    .line 1135
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1136
    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1137
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1138
    aget-object p2, p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0x32

    if-ge p1, v1, :cond_1

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_1

    .line 1140
    iput p3, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->a:I

    goto :goto_0

    .line 1142
    :cond_1
    iput p4, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1146
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "set display cutout type : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_3
    :goto_1
    iget p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->a:I

    if-eqz p1, :cond_6

    if-eq p1, p3, :cond_5

    if-eq p1, p4, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f080504

    .line 2094
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->e:I

    const p1, 0x7f080505

    .line 2095
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->c:I

    const p1, 0x7f0804fa

    .line 2096
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->d:I

    const p1, 0x7f0804fb

    .line 2097
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->b:I

    goto :goto_2

    :cond_5
    const p1, 0x7f080502

    .line 2088
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->e:I

    const p1, 0x7f080503

    .line 2089
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->c:I

    const p1, 0x7f0804f8

    .line 2090
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->d:I

    const p1, 0x7f0804f9

    .line 2091
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->b:I

    goto :goto_2

    :cond_6
    const p1, 0x7f080500

    .line 2082
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->e:I

    const p2, 0x7f080501

    .line 2083
    iput p2, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->c:I

    .line 2084
    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->d:I

    .line 2085
    iput p2, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->b:I

    .line 1076
    :goto_2
    iget p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->d:I

    iput p1, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->f:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0208

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 109
    iget v0, p0, Lcom/coloros/settings/widget/preference/ImagePreference;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
