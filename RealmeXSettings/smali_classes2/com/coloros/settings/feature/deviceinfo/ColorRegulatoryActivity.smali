.class public Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ColorRegulatoryActivity.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    const-string v0, "oppo.eng.factory.no"

    .line 67
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    const-string v0, "RMX1971"

    const-string v1, "RMX1921"

    const-string v2, "RMX2001"

    .line 68
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->c:Ljava/util/List;

    const-string v0, "CPH2067"

    .line 69
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->d:Ljava/util/List;

    const-string v0, "CPH2009"

    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 8

    .line 171
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0172

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a022d

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a022e

    .line 174
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a022c

    .line 175
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 177
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MODEL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, v5, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    :try_start_0
    iget-object v3, v5, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegulatoryActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->finish()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;
    .locals 5

    .line 192
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 193
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    .line 194
    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    .line 200
    invoke-virtual {v2}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->a()Z

    move-result v3

    if-ne v3, v0, :cond_1

    sget-object v3, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    sget-object v4, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    const-string v4, "CN-"

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    const-string p0, "RegulatoryActivity"

    const-string v0, "getMatchElabByXml true"

    .line 203
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    return-object v1
.end method

.method private static b()Z
    .locals 2

    .line 294
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->c:Ljava/util/List;

    sget-object v1, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->d:Ljava/util/List;

    sget-object v1, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->e:Ljava/util/List;

    sget-object v1, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 3025
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MX"

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;",
            ">;"
        }
    .end annotation

    const-string v0, "@"

    const-string v1, "elabinfo"

    .line 243
    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1500ce

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 251
    :cond_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 252
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_8

    :cond_2
    if-eq v4, v6, :cond_1

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    .line 256
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1214
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_6

    if-ne v8, v6, :cond_4

    .line 1218
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    :cond_4
    if-eq v8, v6, :cond_3

    if-eq v8, v7, :cond_3

    .line 1222
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1223
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1224
    new-instance v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    invoke-direct {v8}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;-><init>()V

    const-string v9, "phone"

    .line 1225
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->a:Ljava/lang/String;

    const-string v9, "factory_number"

    .line 1226
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b:Ljava/lang/String;

    const-string v9, "model"

    .line 1227
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->c:Ljava/lang/String;

    const-string v9, "sar"

    .line 1228
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->d:Ljava/lang/String;

    const-string v9, "region"

    .line 1229
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->f:Ljava/lang/String;

    const-string v9, "icon"

    .line 1230
    invoke-interface {p0, v2, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    .line 1231
    iget-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1232
    iget-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->e:Ljava/lang/String;

    .line 1234
    :cond_5
    invoke-virtual {v8}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1235
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_6
    sput-object v4, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->f:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_7

    .line 266
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    return-object v4

    :cond_8
    if-eqz p0, :cond_9

    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_2
    :try_start_2
    const-string v1, "RegulatoryActivity"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    :goto_3
    return-object v2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p0, :cond_a

    .line 266
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 268
    :cond_a
    throw v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showELable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegulatoryActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/deviceinfo/ELabelActivity$a;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/coloros/settings/a;->a:Z

    if-eqz p0, :cond_1

    const-string p0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 2025
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "IN"

    .line 278
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b:Ljava/lang/String;

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic lambda$SG6hQf_o7bMi3tNfaKLBVGGi3_A(Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d022c

    .line 79
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->setContentView(I)V

    const p1, 0x7f0a0587

    .line 80
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aj(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1121
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1122
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const v0, 0x7f0a070a

    .line 1126
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 1131
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    const/high16 v3, -0x1000000

    .line 1132
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1133
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1134
    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$ColorRegulatoryActivity$SG6hQf_o7bMi3tNfaKLBVGGi3_A;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/deviceinfo/-$$Lambda$ColorRegulatoryActivity$SG6hQf_o7bMi3tNfaKLBVGGi3_A;-><init>(Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;)V

    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1136
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1137
    invoke-virtual {v0, v3}, Lcolor/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x102000a

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 87
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/a;->b(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "image"

    if-eqz p1, :cond_1

    .line 88
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 91
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Landroid/widget/SimpleAdapter;

    const v6, 0x7f0d01a9

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [I

    const v0, 0x7f0a0397

    aput v0, v8, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    .line 1153
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d017d

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a06f9

    .line 1154
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a03fa

    .line 1155
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0288

    .line 1156
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a03c6

    .line 1157
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1158
    sget-object v8, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->d:Ljava/util/List;

    sget-object v9, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const v10, 0x7f120992

    if-nez v8, :cond_3

    sget-object v8, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->e:Ljava/util/List;

    sget-object v11, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 1165
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v7, "2AUYF"

    aput-object v7, v5, v1

    sget-object v7, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    aput-object v7, v5, v2

    invoke-virtual {v4, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    const v8, 0x7f120991

    .line 1159
    invoke-virtual {p0, v8}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f121220

    .line 1161
    new-array v8, v2, [Ljava/lang/Object;

    sget-object v11, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    aput-object v11, v8, v1

    invoke-virtual {p0, v4, v8}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string v8, "R9C-"

    aput-object v8, v5, v1

    sget-object v8, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a:Ljava/lang/String;

    aput-object v8, v5, v2

    invoke-virtual {v4, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 103
    :cond_4
    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->g:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->X(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 110
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
