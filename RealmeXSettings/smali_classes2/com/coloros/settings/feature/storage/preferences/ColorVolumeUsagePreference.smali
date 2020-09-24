.class public Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "ColorVolumeUsagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final e:Ljava/lang/String; = "ColorVolumeUsagePreference"


# instance fields
.field public a:Landroid/os/storage/VolumeInfo;

.field public b:J

.field public c:J

.field private f:Landroid/os/storage/StorageManager;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b:J

    .line 49
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    .line 1067
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->f:Landroid/os/storage/StorageManager;

    const p1, 0x7f0a0543

    .line 1068
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->l:Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;

    const p1, 0x7f0a074c

    .line 1069
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->j:Landroid/widget/TextView;

    const p1, 0x7f0a074b

    .line 1070
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->k:Landroid/widget/TextView;

    const p1, 0x7f0a074a

    .line 1071
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->h:Landroid/widget/TextView;

    const p1, 0x7f0a0749

    .line 1072
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->i:Landroid/widget/TextView;

    .line 1073
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b()V

    .line 1076
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a()V

    .line 1077
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->l:Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar;->setRatioInfos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 8

    .line 117
    sget-boolean v0, Lcom/coloros/settings/a;->h:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b:J

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b:J

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bf;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/coloros/settings/utils/bf;->a(Ljava/lang/String;)F

    move-result v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bf;->a(Ljava/lang/String;F)J

    move-result-wide v2

    .line 126
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    float-to-double v3, v1

    const-string v1, "0.0"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/coloros/settings/utils/bf;->a(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 104
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->d()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1215ad

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1215a5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->j:Landroid/widget/TextView;

    const v1, 0x7f1205cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->g:Ljava/util/List;

    .line 88
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->f:Landroid/os/storage/StorageManager;

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0749

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "storage_settings_clean"

    const-string v1, "1"

    .line 156
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "20012"

    const-string v2, "click_top_level_settings"

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/c;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
