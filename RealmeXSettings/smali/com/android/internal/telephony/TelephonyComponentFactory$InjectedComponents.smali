.class Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyComponentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectedComponents"
.end annotation


# static fields
.field private static final ATTRIBUTE_JAR:Ljava/lang/String; = "jar"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final PRODUCT:Ljava/lang/String; = "/product/"

.field private static final SYSTEM:Ljava/lang/String; = "/system/"

.field private static final TAG_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_COMPONENTS:Ljava/lang/String; = "components"

.field private static final TAG_INJECTION:Ljava/lang/String; = "injection"


# instance fields
.field private final mComponentNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

.field private mJarPath:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/TelephonyComponentFactory$1;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->makeInjectedInstance()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->getValidatedPaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/util/Set;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->isComponentInjected(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object p0
.end method

.method private getValidatedPaths()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$09rMKC8001jAR0zFrzzlPx26Xjs;

    .line 107
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$UYUq9z2WZwxqOLXquU0tTNN9wAs;

    .line 108
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 119
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isComponentInjected(Ljava/lang/String;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$getValidatedPaths$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/system/"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getValidatedPaths$1(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 112
    iget-wide v1, v1, Landroid/system/StructStatVfs;->f_flag:J

    sget p0, Landroid/system/OsConstants;->ST_RDONLY:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Injection jar is not protected , path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private makeInjectedInstance()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->getValidatedPaths()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "validated paths: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 128
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyComponentFactory;

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 134
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "injection failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method private parseComponent(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 175
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 177
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 184
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse the component."

    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private parseComponents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 167
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$DKjB_mCxFOHomOyKLPFU9-9Dywc;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$DKjB_mCxFOHomOyKLPFU9-9Dywc;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x1

    const-string v2, "component"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private parseInjection(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 160
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$eUdIxJOKoyVP5UmFJtWXBUO93Qk;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$eUdIxJOKoyVP5UmFJtWXBUO93Qk;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x0

    const-string v2, "components"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private parseXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 150
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$nLdppNQT1Bv7QyIU3LwAwVD2K60;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$TelephonyComponentFactory$InjectedComponents$nLdppNQT1Bv7QyIU3LwAwVD2K60;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x0

    const-string v2, "injection"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 196
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 197
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 198
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 206
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Failed to parse or find tag: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private setAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 217
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, "jar"

    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$parseComponents$4$TelephonyComponentFactory$InjectedComponents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseComponent(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public synthetic lambda$parseInjection$3$TelephonyComponentFactory$InjectedComponents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseComponents(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public synthetic lambda$parseXml$2$TelephonyComponentFactory$InjectedComponents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->setAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseInjection(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method
