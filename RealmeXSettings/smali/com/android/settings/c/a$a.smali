.class public final Lcom/android/settings/c/a$a;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/c/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/c/a$a$a;,
        Lcom/android/settings/c/a$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/c/a$a;",
        "Lcom/android/settings/c/a$a$a;",
        ">;",
        "Lcom/android/settings/c/a$d;"
    }
.end annotation


# static fields
.field private static final f:Lcom/android/settings/c/a$a;

.field private static volatile g:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1302
    new-instance v0, Lcom/android/settings/c/a$a;

    invoke-direct {v0}, Lcom/android/settings/c/a$a;-><init>()V

    .line 1303
    sput-object v0, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    invoke-virtual {v0}, Lcom/android/settings/c/a$a;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 546
    iput-object v0, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 547
    iput-object v0, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lcom/android/settings/c/a$a;->d:I

    const-wide/16 v0, 0x0

    .line 549
    iput-wide v0, p0, Lcom/android/settings/c/a$a;->e:D

    return-void
.end method

.method public static a()Lcom/android/settings/c/a$a$a;
    .locals 1

    .line 968
    sget-object v0, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    invoke-virtual {v0}, Lcom/android/settings/c/a$a;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/a$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/c/a$a;Lcom/android/settings/c/a$a$b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3823
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/c/a$a;->b:I

    .line 3824
    invoke-virtual {p1}, Lcom/android/settings/c/a$a$b;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/c/a$a;->d:I

    return-void

    .line 3821
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic a(Lcom/android/settings/c/a$a;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3696
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/c/a$a;->b:I

    .line 3697
    iput-object p1, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    return-void

    .line 3694
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static b()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/c/a$a;",
            ">;"
        }
    .end annotation

    .line 1313
    sget-object v0, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    invoke-virtual {v0}, Lcom/android/settings/c/a$a;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/c/a$a;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3771
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/c/a$a;->b:I

    .line 3772
    iput-object p1, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    return-void

    .line 3769
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static synthetic c()Lcom/android/settings/c/a$a;
    .locals 1

    .line 540
    sget-object v0, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .line 661
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 736
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x2

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

    .line 807
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x4

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

    .line 840
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/16 v1, 0x8

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
    .locals 7

    .line 1191
    sget-object v0, Lcom/android/settings/c/a$1;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1295
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1286
    :pswitch_0
    sget-object p1, Lcom/android/settings/c/a$a;->g:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/android/settings/c/a$a;

    monitor-enter p1

    .line 1287
    :try_start_0
    sget-object p2, Lcom/android/settings/c/a$a;->g:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1288
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/android/settings/c/a$a;->g:Lcom/google/protobuf/Parser;

    .line 1290
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1292
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/settings/c/a$a;->g:Lcom/google/protobuf/Parser;

    return-object p1

    .line 1225
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 1232
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_8

    const/16 v1, 0xa

    if-eq p3, v1, :cond_7

    const/16 v1, 0x1a

    if-eq p3, v1, :cond_6

    const/16 v1, 0x20

    if-eq p3, v1, :cond_4

    const/16 v1, 0x29

    if-eq p3, v1, :cond_3

    .line 1238
    invoke-virtual {p0, p3, p2}, Lcom/android/settings/c/a$a;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 1267
    :cond_3
    iget p3, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/android/settings/c/a$a;->b:I

    .line 1268
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/c/a$a;->e:D

    goto :goto_1

    .line 1256
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 1257
    invoke-static {p3}, Lcom/android/settings/c/a$a$b;->a(I)Lcom/android/settings/c/a$a$b;

    move-result-object v1

    const/4 v2, 0x4

    if-nez v1, :cond_5

    .line 1259
    invoke-super {p0, v2, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_1

    .line 1261
    :cond_5
    iget v1, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/c/a$a;->b:I

    .line 1262
    iput p3, p0, Lcom/android/settings/c/a$a;->d:I

    goto :goto_1

    .line 1250
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1251
    iget v1, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/c/a$a;->b:I

    .line 1252
    iput-object p3, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 1244
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1245
    iget v1, p0, Lcom/android/settings/c/a$a;->b:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/settings/c/a$a;->b:I

    .line 1246
    iput-object p3, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1276
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1278
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1274
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1279
    :goto_3
    throw p1

    .line 1283
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    return-object p1

    .line 1205
    :pswitch_3
    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1206
    check-cast p3, Lcom/android/settings/c/a$a;

    .line 1208
    invoke-direct {p0}, Lcom/android/settings/c/a$a;->d()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 1209
    invoke-direct {p3}, Lcom/android/settings/c/a$a;->d()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 1207
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 1211
    invoke-direct {p0}, Lcom/android/settings/c/a$a;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    .line 1212
    invoke-direct {p3}, Lcom/android/settings/c/a$a;->e()Z

    move-result v1

    iget-object v2, p3, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    .line 1210
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    .line 1213
    invoke-direct {p0}, Lcom/android/settings/c/a$a;->f()Z

    move-result p2

    iget v0, p0, Lcom/android/settings/c/a$a;->d:I

    .line 1214
    invoke-direct {p3}, Lcom/android/settings/c/a$a;->f()Z

    move-result v1

    iget v2, p3, Lcom/android/settings/c/a$a;->d:I

    .line 1213
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p2

    iput p2, p0, Lcom/android/settings/c/a$a;->d:I

    .line 1216
    invoke-direct {p0}, Lcom/android/settings/c/a$a;->g()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/settings/c/a$a;->e:D

    .line 1217
    invoke-direct {p3}, Lcom/android/settings/c/a$a;->g()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/settings/c/a$a;->e:D

    move-object v0, p1

    .line 1215
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/c/a$a;->e:D

    .line 1218
    sget-object p2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p1, p2, :cond_a

    .line 1220
    iget p1, p0, Lcom/android/settings/c/a$a;->b:I

    iget p2, p3, Lcom/android/settings/c/a$a;->b:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/settings/c/a$a;->b:I

    :cond_a
    return-object p0

    .line 1202
    :pswitch_4
    new-instance p1, Lcom/android/settings/c/a$a$a;

    invoke-direct {p1, v0}, Lcom/android/settings/c/a$a$a;-><init>(B)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 1196
    :pswitch_6
    sget-object p1, Lcom/android/settings/c/a$a;->f:Lcom/android/settings/c/a$a;

    return-object p1

    .line 1193
    :pswitch_7
    new-instance p1, Lcom/android/settings/c/a$a;

    invoke-direct {p1}, Lcom/android/settings/c/a$a;-><init>()V

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
    .locals 5

    .line 881
    iget v0, p0, Lcom/android/settings/c/a$a;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 885
    :cond_0
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2671
    iget-object v0, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 887
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 889
    :cond_1
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2746
    iget-object v1, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    .line 891
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 893
    :cond_2
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 894
    iget v0, p0, Lcom/android/settings/c/a$a;->d:I

    .line 895
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 897
    :cond_3
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 898
    iget-wide v3, p0, Lcom/android/settings/c/a$a;->e:D

    .line 899
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v2, v0

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/android/settings/c/a$a;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 902
    iput v2, p0, Lcom/android/settings/c/a$a;->memoizedSerializedSize:I

    return v2
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 866
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 868
    :cond_0
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 1746
    iget-object v1, p0, Lcom/android/settings/c/a$a;->c:Ljava/lang/String;

    .line 869
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 871
    :cond_1
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 872
    iget v0, p0, Lcom/android/settings/c/a$a;->d:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 874
    :cond_2
    iget v0, p0, Lcom/android/settings/c/a$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 875
    iget-wide v1, p0, Lcom/android/settings/c/a$a;->e:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 877
    :cond_3
    iget-object v0, p0, Lcom/android/settings/c/a$a;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
