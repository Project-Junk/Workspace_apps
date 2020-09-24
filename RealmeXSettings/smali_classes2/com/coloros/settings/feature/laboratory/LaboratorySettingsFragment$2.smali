.class final Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment$2;
.super Lcom/android/settings/search/a;
.source "LaboratorySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v1, "laboratory_key"

    .line 109
    iput-object v1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v1, 0x7f1215f6

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const v1, 0x7f0809b2

    .line 112
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    .line 113
    const-class v2, Lcom/coloros/settings/feature/laboratory/LaboratorySettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 114
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "realme.multimedia.dualheadphone"

    .line 117
    invoke-static {p1, v2}, Lcom/coloros/settings/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "realme_lab_double_ear"

    .line 119
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120890

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 121
    iget-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 122
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 123
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "realme.common.listoptimize.support"

    invoke-static {p1, v2}, Lcom/coloros/settings/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "list_optimize"

    .line 129
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f120bfa

    .line 130
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 131
    iget-object v3, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 132
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 133
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "realme_lab_ex_deep_sleep"

    .line 138
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v3, 0x7f121626

    .line 139
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 140
    iget-object p1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 141
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 142
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p2
.end method
