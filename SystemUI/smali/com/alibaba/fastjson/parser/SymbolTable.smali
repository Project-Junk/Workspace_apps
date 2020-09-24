.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field private final indexMask:I

.field private final symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    .line 29
    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 30
    new-array p1, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    const-string p1, "$ref"

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    const-string p1, "@type"

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 100
    new-array v0, p2, [C

    add-int/2addr p2, p1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    .line 77
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 79
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 81
    iget p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, p0, :cond_0

    iget-object p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length p0, p0

    if-ne p3, p0, :cond_0

    iget-object p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    const/4 p4, 0x0

    .line 83
    invoke-virtual {p1, p2, p0, p4, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 84
    iget-object p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    return-object p0

    .line 87
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p3, v1, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    new-instance p2, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {p2, p1, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    aput-object p2, p0, v0

    return-object p1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 3

    .line 46
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 48
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 51
    iget p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    const/4 v0, 0x0

    if-ne p4, p0, :cond_2

    iget-object p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length p0, p0

    if-ne p3, p0, :cond_2

    move p0, v0

    :goto_0
    if-ge p0, p3, :cond_1

    add-int p4, p2, p0

    .line 54
    aget-char p4, p1, p4

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    aget-char v2, v2, p0

    if-eq p4, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    move v0, p0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 64
    iget-object p0, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    return-object p0

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 70
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {p2, p1, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    .line 72
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object p2, p0, v0

    return-object p1
.end method
