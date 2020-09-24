.class public final Lcom/color/darkmode/recovery/RecoveryData;
.super Ljava/lang/Object;


# instance fields
.field private beginTime:Ljava/lang/String;

.field private clickApp:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private openApp:Ljava/lang/String;

.field private romUpdateHiddenApp:Ljava/lang/String;

.field private romUpdateHiddenAppVersion:I

.field private romUpdateHiddenAppVersionKey:Ljava/lang/String;

.field private romUpdateOpenApp:Ljava/lang/String;

.field private romUpdateOpenAppVersion:I

.field private romUpdateOpenAppVersionKey:Ljava/lang/String;

.field private switch:Z

.field private switchNeverOpenHint:Z

.field private timeSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/color/darkmode/recovery/RecoveryData;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "beginTime"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTime"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateHiddenApp"

    invoke-static {p6, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateOpenApp"

    invoke-static {p7, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickApp"

    invoke-static {p8, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openApp"

    invoke-static {p9, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateOpenAppVersionKey"

    invoke-static {p12, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateHiddenAppVersionKey"

    invoke-static {p13, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    iput-object p2, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    iput-object p3, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    iput-boolean p5, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    iput-object p6, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    iput-object p7, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    iput-object p8, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    iput-object p9, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    iput p10, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    iput p11, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    iput-object p12, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    iput-object p13, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILa/d/b/e;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const-string v7, ""

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const-string v8, ""

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const-string v9, ""

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const-string v10, ""

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v2

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v2, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    const-string v12, ""

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, ""

    goto :goto_c

    :cond_c
    move-object/from16 v0, p13

    :goto_c
    move p1, v1

    move-object p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v2

    move-object/from16 p12, v12

    move-object/from16 p13, v0

    invoke-direct/range {p0 .. p13}, Lcom/color/darkmode/recovery/RecoveryData;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/color/darkmode/recovery/RecoveryData;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/color/darkmode/recovery/RecoveryData;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/color/darkmode/recovery/RecoveryData;->copy(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/color/darkmode/recovery/RecoveryData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    return p0
.end method

.method public final component10()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    return p0
.end method

.method public final component11()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    return p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/color/darkmode/recovery/RecoveryData;
    .locals 15

    const-string v0, "beginTime"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTime"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateHiddenApp"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateOpenApp"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickApp"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openApp"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateOpenAppVersionKey"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "romUpdateHiddenAppVersionKey"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/color/darkmode/recovery/RecoveryData;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v14}, Lcom/color/darkmode/recovery/RecoveryData;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/color/darkmode/recovery/RecoveryData;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/color/darkmode/recovery/RecoveryData;

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    iget-boolean v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    iget-boolean v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    iget-boolean v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    iget v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    iget v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    invoke-static {v1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final getBeginTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getClickApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getOpenApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getRomUpdateHiddenApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getRomUpdateHiddenAppVersion()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    return p0
.end method

.method public final getRomUpdateHiddenAppVersionKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getRomUpdateOpenApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getRomUpdateOpenAppVersion()I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    return p0
.end method

.method public final getRomUpdateOpenAppVersionKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    return p0
.end method

.method public final getSwitchNeverOpenHint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    return p0
.end method

.method public final getTimeSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_8
    move v1, v3

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_9
    move v1, v3

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_a
    add-int/2addr v0, v3

    return v0
.end method

.method public final setBeginTime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    return-void
.end method

.method public final setClickApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    return-void
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    return-void
.end method

.method public final setOpenApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    return-void
.end method

.method public final setRomUpdateHiddenApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    return-void
.end method

.method public final setRomUpdateHiddenAppVersion(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    return-void
.end method

.method public final setRomUpdateHiddenAppVersionKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    return-void
.end method

.method public final setRomUpdateOpenApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    return-void
.end method

.method public final setRomUpdateOpenAppVersion(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    return-void
.end method

.method public final setRomUpdateOpenAppVersionKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    return-void
.end method

.method public final setSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    return-void
.end method

.method public final setSwitchNeverOpenHint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    return-void
.end method

.method public final setTimeSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryData(switch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->timeSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchNeverOpenHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->switchNeverOpenHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateHiddenApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateOpenApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->clickApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->openApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateOpenAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateHiddenAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateOpenAppVersionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateOpenAppVersionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", romUpdateHiddenAppVersionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/darkmode/recovery/RecoveryData;->romUpdateHiddenAppVersionKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
