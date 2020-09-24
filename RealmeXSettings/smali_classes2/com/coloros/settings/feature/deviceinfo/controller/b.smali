.class public final Lcom/coloros/settings/feature/deviceinfo/controller/b;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorCpuInfoPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cpu_info"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/b;->mContext:Landroid/content/Context;

    .line 1112
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f12078a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 1113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f12078d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-static {v0}, Lcom/coloros/settings/utils/ad;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1115
    invoke-static {}, Lcom/coloros/settings/utils/ad;->b()Ljava/lang/String;

    move-result-object v6

    .line 1117
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_7

    .line 1118
    sget-boolean v7, Lcom/coloros/settings/a;->a:Z

    if-nez v7, :cond_0

    const-string v7, "SDM660"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f121160

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f121161

    .line 1120
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    aput-object v6, v8, v3

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    const-string v7, "SDM845"

    .line 1121
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v1, 0x7f12115c

    .line 1122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    const-string v7, "SM8150"

    .line 1123
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v1, 0x7f12115d

    .line 1124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    const-string v7, "SM8150_Plus"

    .line 1125
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v1, 0x7f12115e

    .line 1126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const-string v7, "SM8250"

    .line 1127
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v1, 0x7f12115f

    .line 1128
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const-string v7, "SDM720G"

    .line 1129
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v1, 0x7f12115b

    .line 1130
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string v7, "SDM665"

    .line 1131
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v1, 0x7f12078e

    .line 1132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const v7, 0x7f12115a

    const/4 v9, 0x3

    .line 1135
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v4

    aput-object v6, v9, v3

    aput-object v5, v9, v8

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const v6, 0x7f121159

    .line 1138
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1140
    :cond_8
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1141
    invoke-static {}, Lcom/coloros/settings/utils/ad;->b()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-static {v0}, Lcom/coloros/settings/utils/ad;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "MT6885Z/CZA"

    .line 1144
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1145
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_9
    const-string v6, "MT6769V/CB"

    .line 1146
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v1, 0x7f12078b

    .line 1147
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_a
    const-string v6, "MT6769V/CU"

    .line 1148
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f12078c

    .line 1149
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_b
    move-object v1, v5

    goto :goto_0

    .line 1157
    :cond_c
    invoke-static {v0}, Lcom/coloros/settings/utils/ad;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    const-string v6, "persist.version.confidential"

    .line 2395
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "ro.product.cputype"

    .line 1400
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "MT6885"

    .line 1401
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1402
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v1
.end method
