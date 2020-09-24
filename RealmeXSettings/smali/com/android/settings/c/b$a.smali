.class public final Lcom/android/settings/c/b$a;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LogProto.java"

# interfaces
.implements Lcom/android/settings/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/c/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/c/b$a;",
        "Lcom/android/settings/c/b$a$a;",
        ">;",
        "Lcom/android/settings/c/b$b;"
    }
.end annotation


# static fields
.field private static final h:Lcom/android/settings/c/b$a;

.field private static volatile i:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1148
    new-instance v0, Lcom/android/settings/c/b$a;

    invoke-direct {v0}, Lcom/android/settings/c/b$a;-><init>()V

    .line 1149
    sput-object v0, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    invoke-virtual {v0}, Lcom/android/settings/c/b$a;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/android/settings/c/b$a;->b:I

    .line 161
    iput v0, p0, Lcom/android/settings/c/b$a;->c:I

    .line 162
    iput v0, p0, Lcom/android/settings/c/b$a;->d:I

    const-string v1, ""

    .line 163
    iput-object v1, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 164
    iput v0, p0, Lcom/android/settings/c/b$a;->f:I

    .line 165
    iput-object v1, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/android/settings/c/b$a$a;
    .locals 1

    .line 649
    sget-object v0, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    invoke-virtual {v0}, Lcom/android/settings/c/b$a;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/b$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/c/b$a;I)V
    .locals 1

    .line 3204
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3205
    iput p1, p0, Lcom/android/settings/c/b$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/c/b$a;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3368
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3369
    iput-object p1, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    return-void

    .line 3366
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic b()Lcom/android/settings/c/b$a;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/c/b$a;I)V
    .locals 1

    .line 3254
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3255
    iput p1, p0, Lcom/android/settings/c/b$a;->c:I

    return-void
.end method

.method static synthetic b(Lcom/android/settings/c/b$a;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3498
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3499
    iput-object p1, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    return-void

    .line 3496
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic c(Lcom/android/settings/c/b$a;I)V
    .locals 1

    .line 3303
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3304
    iput p1, p0, Lcom/android/settings/c/b$a;->d:I

    return-void
.end method

.method private c()Z
    .locals 2

    .line 180
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/android/settings/c/b$a;I)V
    .locals 1

    .line 3433
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/c/b$a;->a:I

    .line 3434
    iput p1, p0, Lcom/android/settings/c/b$a;->f:I

    return-void
.end method

.method private d()Z
    .locals 2

    .line 232
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 281
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 2

    .line 330
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .locals 2

    .line 411
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 2

    .line 460
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1026
    sget-object v0, Lcom/android/settings/c/b$1;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1132
    :pswitch_0
    sget-object p1, Lcom/android/settings/c/b$a;->i:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/android/settings/c/b$a;

    monitor-enter p1

    .line 1133
    :try_start_0
    sget-object p2, Lcom/android/settings/c/b$a;->i:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1134
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/android/settings/c/b$a;->i:Lcom/google/protobuf/Parser;

    .line 1136
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1138
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/settings/c/b$a;->i:Lcom/google/protobuf/Parser;

    return-object p1

    .line 1067
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 1074
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_9

    const/16 v1, 0x8

    if-eq p3, v1, :cond_8

    const/16 v2, 0x10

    if-eq p3, v2, :cond_7

    const/16 v3, 0x18

    if-eq p3, v3, :cond_6

    const/16 v3, 0x22

    if-eq p3, v3, :cond_5

    const/16 v1, 0x28

    if-eq p3, v1, :cond_4

    const/16 v1, 0x32

    if-eq p3, v1, :cond_3

    .line 1080
    invoke-virtual {p0, p3, p2}, Lcom/android/settings/c/b$a;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 1112
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1113
    iget v1, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1114
    iput-object p3, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 1107
    :cond_4
    iget p3, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1108
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/settings/c/b$a;->f:I

    goto :goto_1

    .line 1101
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1102
    iget v2, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1103
    iput-object p3, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 1096
    :cond_6
    iget p3, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1097
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/settings/c/b$a;->d:I

    goto :goto_1

    .line 1091
    :cond_7
    iget p3, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1092
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/settings/c/b$a;->c:I

    goto :goto_1

    .line 1086
    :cond_8
    iget p3, p0, Lcom/android/settings/c/b$a;->a:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/android/settings/c/b$a;->a:I

    .line 1087
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/settings/c/b$a;->b:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1122
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1124
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1120
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1125
    :goto_3
    throw p1

    .line 1129
    :cond_a
    :pswitch_2
    sget-object p1, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    return-object p1

    .line 1040
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1041
    check-cast p3, Lcom/android/settings/c/b$a;

    .line 1043
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->c()Z

    move-result p1

    iget v0, p0, Lcom/android/settings/c/b$a;->b:I

    .line 1044
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->c()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/c/b$a;->b:I

    .line 1042
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/settings/c/b$a;->b:I

    .line 1046
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->d()Z

    move-result p1

    iget v0, p0, Lcom/android/settings/c/b$a;->c:I

    .line 1047
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->d()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/c/b$a;->c:I

    .line 1045
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/settings/c/b$a;->c:I

    .line 1049
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->e()Z

    move-result p1

    iget v0, p0, Lcom/android/settings/c/b$a;->d:I

    .line 1050
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->e()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/c/b$a;->d:I

    .line 1048
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/settings/c/b$a;->d:I

    .line 1052
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->f()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 1053
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->f()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 1051
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 1055
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->g()Z

    move-result p1

    iget v0, p0, Lcom/android/settings/c/b$a;->f:I

    .line 1056
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->g()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/c/b$a;->f:I

    .line 1054
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/settings/c/b$a;->f:I

    .line 1058
    invoke-direct {p0}, Lcom/android/settings/c/b$a;->h()Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    .line 1059
    invoke-direct {p3}, Lcom/android/settings/c/b$a;->h()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    .line 1057
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    .line 1060
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_b

    .line 1062
    iget p1, p0, Lcom/android/settings/c/b$a;->a:I

    iget p2, p3, Lcom/android/settings/c/b$a;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/c/b$a;->a:I

    :cond_b
    return-object p0

    .line 1037
    :pswitch_4
    new-instance p1, Lcom/android/settings/c/b$a$a;

    invoke-direct {p1, v0}, Lcom/android/settings/c/b$a$a;-><init>(B)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 1031
    :pswitch_6
    sget-object p1, Lcom/android/settings/c/b$a;->h:Lcom/android/settings/c/b$a;

    return-object p1

    .line 1028
    :pswitch_7
    new-instance p1, Lcom/android/settings/c/b$a;

    invoke-direct {p1}, Lcom/android/settings/c/b$a;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 554
    iget v0, p0, Lcom/android/settings/c/b$a;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 558
    :cond_0
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 559
    iget v0, p0, Lcom/android/settings/c/b$a;->b:I

    .line 560
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 562
    :cond_1
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 563
    iget v0, p0, Lcom/android/settings/c/b$a;->c:I

    .line 564
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 566
    :cond_2
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 567
    iget v3, p0, Lcom/android/settings/c/b$a;->d:I

    .line 568
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 570
    :cond_3
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 2341
    iget-object v0, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 572
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 574
    :cond_4
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 575
    iget v1, p0, Lcom/android/settings/c/b$a;->f:I

    .line 576
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 578
    :cond_5
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 2471
    iget-object v1, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    .line 580
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/android/settings/c/b$a;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 583
    iput v2, p0, Lcom/android/settings/c/b$a;->memoizedSerializedSize:I

    return v2
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 533
    iget v0, p0, Lcom/android/settings/c/b$a;->b:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 535
    :cond_0
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 536
    iget v0, p0, Lcom/android/settings/c/b$a;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 538
    :cond_1
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 539
    iget v2, p0, Lcom/android/settings/c/b$a;->d:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 541
    :cond_2
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/android/settings/c/b$a;->e:Ljava/lang/String;

    .line 542
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 544
    :cond_3
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 545
    iget v1, p0, Lcom/android/settings/c/b$a;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 547
    :cond_4
    iget v0, p0, Lcom/android/settings/c/b$a;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1471
    iget-object v1, p0, Lcom/android/settings/c/b$a;->g:Ljava/lang/String;

    .line 548
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/android/settings/c/b$a;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
