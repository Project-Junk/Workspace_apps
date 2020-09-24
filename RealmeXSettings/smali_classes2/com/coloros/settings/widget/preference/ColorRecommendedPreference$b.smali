.class public Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
.super Ljava/lang/Object;
.source "ColorRecommendedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field b:Ljava/lang/String;

.field c:Landroid/content/Intent;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->b:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->c:Landroid/content/Intent;

    .line 122
    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->h:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->b:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->c:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->a:I

    .line 114
    iput-object p3, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->d:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->e:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
