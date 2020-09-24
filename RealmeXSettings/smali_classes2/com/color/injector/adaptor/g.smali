.class public Lcom/color/injector/adaptor/g;
.super Ljava/lang/Object;
.source "Feature.java"


# instance fields
.field private mIsEnabled:Z

.field private mKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/color/injector/adaptor/g;->mKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/color/injector/adaptor/g;->init(Ljava/lang/String;)V

    return-void
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/color/injector/adaptor/h;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/injector/adaptor/g;->mIsEnabled:Z

    .line 45
    iget-boolean p1, p0, Lcom/color/injector/adaptor/g;->mIsEnabled:Z

    return p1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/color/injector/adaptor/g;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;->isEnabled(Ljava/lang/String;)Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/color/injector/adaptor/g;->mIsEnabled:Z

    return v0
.end method
