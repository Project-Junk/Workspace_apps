.class public Lcom/color/settingslib/provider/ColorSearchIndexableResource;
.super Lcom/color/settingslib/provider/ColorSearchIndexableData;
.source "ColorSearchIndexableResource.java"


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/color/settingslib/provider/ColorSearchIndexableData;-><init>()V

    .line 52
    iput p1, p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->rank:I

    .line 53
    iput p2, p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->xmlResId:I

    .line 54
    iput-object p3, p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->className:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->iconResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/color/settingslib/provider/ColorSearchIndexableData;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchIndexableResource["

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-super {p0}, Lcom/color/settingslib/provider/ColorSearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xmlResId: "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget p0, p0, Lcom/color/settingslib/provider/ColorSearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
