.class public Lcom/coloros/anim/model/Font;
.super Ljava/lang/Object;
.source "Font.java"


# instance fields
.field private final ascent:F

.field private final family:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/coloros/anim/model/Font;->family:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/coloros/anim/model/Font;->name:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/coloros/anim/model/Font;->style:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/coloros/anim/model/Font;->ascent:F

    return-void
.end method


# virtual methods
.method getAscent()F
    .locals 0

    .line 32
    iget p0, p0, Lcom/coloros/anim/model/Font;->ascent:F

    return p0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/anim/model/Font;->family:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/coloros/anim/model/Font;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/anim/model/Font;->style:Ljava/lang/String;

    return-object p0
.end method
