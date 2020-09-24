.class public Lcom/coloros/anim/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/anim/e/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/e/aj<",
        "Lcom/coloros/anim/c/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/anim/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/anim/e/h;

    invoke-direct {v0}, Lcom/coloros/anim/e/h;-><init>()V

    sput-object v0, Lcom/coloros/anim/e/h;->a:Lcom/coloros/anim/e/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/coloros/anim/c/b;
    .locals 22

    sget-object v0, Lcom/coloros/anim/c/b$a;->c:Lcom/coloros/anim/c/b$a;

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v11, v0

    move/from16 v21, v1

    move-object v7, v2

    move-object v8, v7

    move v12, v3

    move/from16 v17, v12

    move/from16 v18, v17

    move-wide v9, v4

    move-wide v13, v9

    move-wide v15, v13

    move-wide/from16 v19, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_8

    const/16 v5, 0x6a

    if-eq v4, v5, :cond_7

    const/16 v5, 0xcbd

    if-eq v4, v5, :cond_6

    const/16 v5, 0xd7c

    if-eq v4, v5, :cond_5

    const/16 v5, 0xd87

    if-eq v4, v5, :cond_4

    const/16 v5, 0xdd7

    if-eq v4, v5, :cond_3

    const/16 v5, 0xe50

    if-eq v4, v5, :cond_2

    const/16 v5, 0xe64

    if-eq v4, v5, :cond_1

    const/16 v5, 0xe7e

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_0
    const-string v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_2

    :cond_1
    const-string v4, "sw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_2

    :cond_2
    const-string v4, "sc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_2

    :cond_3
    const-string v4, "of"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    goto :goto_2

    :cond_4
    const-string v4, "ls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_2

    :cond_5
    const-string v4, "lh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_2

    :cond_6
    const-string v4, "fc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_7
    const-string v4, "j"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_2

    :cond_8
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    :goto_1
    move v0, v2

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    move/from16 v21, v0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide/from16 v19, v4

    goto/16 :goto_0

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/coloros/anim/e/q;->a(Landroid/util/JsonReader;)I

    move-result v0

    move/from16 v18, v0

    goto/16 :goto_0

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/coloros/anim/e/q;->a(Landroid/util/JsonReader;)I

    move-result v0

    move/from16 v17, v0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v15, v4

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v13, v4

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    move v12, v0

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    sget-object v2, Lcom/coloros/anim/c/b$a;->c:Lcom/coloros/anim/c/b$a;

    invoke-virtual {v2}, Lcom/coloros/anim/c/b$a;->ordinal()I

    move-result v2

    if-gt v0, v2, :cond_b

    if-gez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/coloros/anim/c/b$a;->values()[Lcom/coloros/anim/c/b$a;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_4

    :cond_b
    :goto_3
    sget-object v0, Lcom/coloros/anim/c/b$a;->c:Lcom/coloros/anim/c/b$a;

    :goto_4
    move-object v11, v0

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    move-wide v9, v4

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    new-instance v0, Lcom/coloros/anim/c/b;

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Lcom/coloros/anim/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;DLcom/coloros/anim/c/b$a;IDDIIDZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/e/h;->a(Landroid/util/JsonReader;F)Lcom/coloros/anim/c/b;

    move-result-object p0

    return-object p0
.end method
