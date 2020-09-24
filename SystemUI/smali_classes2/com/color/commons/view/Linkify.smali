.class public Lcom/color/commons/view/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/commons/view/Linkify$LinkSpec;,
        Lcom/color/commons/view/Linkify$TransformFilter;,
        Lcom/color/commons/view/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final WEB_URL:Ljava/util/regex/Pattern;

.field public static final sUrlMatchFilter:Lcom/color/commons/view/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((http[s]{0,1}|ftp)://[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|[a-zA-Z0-9-]+?\\.(com|net|cn|me|tw|fr|org)"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/color/commons/view/Linkify;->WEB_URL:Ljava/util/regex/Pattern;

    .line 62
    new-instance v0, Lcom/color/commons/view/Linkify$1;

    invoke-direct {v0}, Lcom/color/commons/view/Linkify$1;-><init>()V

    sput-object v0, Lcom/color/commons/view/Linkify;->sUrlMatchFilter:Lcom/color/commons/view/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;Z)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 30
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 31
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 37
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sget-object v6, Lcom/color/commons/view/Linkify;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v1, "http://"

    const-string v2, "https://"

    const-string v4, "rtsp://"

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/color/commons/view/Linkify;->sUrlMatchFilter:Lcom/color/commons/view/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/color/commons/view/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/color/commons/view/Linkify$MatchFilter;Lcom/color/commons/view/Linkify$TransformFilter;)V

    .line 42
    sget-object v6, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v1, "mailto:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/color/commons/view/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/color/commons/view/Linkify$MatchFilter;Lcom/color/commons/view/Linkify$TransformFilter;)V

    .line 45
    invoke-static {p1, p0}, Lcom/color/commons/view/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 47
    invoke-static {p1}, Lcom/color/commons/view/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/commons/view/Linkify$LinkSpec;

    .line 54
    iget-object v1, v0, Lcom/color/commons/view/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v0, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    iget v0, v0, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    invoke-static {v1, v2, v0, p0}, Lcom/color/commons/view/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_1

    :cond_4
    return v3
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 1

    .line 59
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 60
    invoke-interface {p3, v0, p1, p2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/color/commons/view/Linkify$MatchFilter;Lcom/color/commons/view/Linkify$TransformFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/commons/view/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/color/commons/view/Linkify$MatchFilter;",
            "Lcom/color/commons/view/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 83
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-eqz p4, :cond_1

    .line 85
    invoke-interface {p4, p1, v0, v1}, Lcom/color/commons/view/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :cond_1
    new-instance v2, Lcom/color/commons/view/Linkify$LinkSpec;

    invoke-direct {v2}, Lcom/color/commons/view/Linkify$LinkSpec;-><init>()V

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, p2, p5}, Lcom/color/commons/view/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/color/commons/view/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v3

    .line 89
    iput-object v3, v2, Lcom/color/commons/view/Linkify$LinkSpec;->url:Ljava/lang/String;

    .line 90
    iput v0, v2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    .line 91
    iput v1, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    .line 93
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/commons/view/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 133
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    array-length v6, v2

    if-lt v6, v5, :cond_1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    array-length v2, v3

    if-lt v2, v5, :cond_2

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 138
    :cond_2
    new-instance v2, Lcom/color/commons/view/Linkify$LinkSpec;

    invoke-direct {v2}, Lcom/color/commons/view/Linkify$LinkSpec;-><init>()V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/color/commons/view/Linkify$LinkSpec;->url:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    .line 141
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    .line 142
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/color/commons/view/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_0

    .line 100
    invoke-interface {p3, p2, p0}, Lcom/color/commons/view/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    .line 105
    :goto_0
    array-length v0, p1

    const/4 v6, 0x1

    if-ge p3, v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    aget-object v3, p1, p3

    const/4 v4, 0x0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    aget-object v3, p1, p3

    const/4 v4, 0x0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move v6, p2

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/commons/view/Linkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/color/commons/view/Linkify$2;

    invoke-direct {v0}, Lcom/color/commons/view/Linkify$2;-><init>()V

    .line 175
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_4

    .line 181
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/commons/view/Linkify$LinkSpec;

    add-int/lit8 v3, v1, 0x1

    .line 182
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/commons/view/Linkify$LinkSpec;

    .line 185
    iget v5, v2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    iget v6, v4, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    if-gt v5, v6, :cond_3

    iget v5, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v6, v4, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    if-le v5, v6, :cond_3

    .line 186
    iget v5, v4, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v6, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v5, v6, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    .line 188
    :cond_0
    iget v5, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v6, v2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    sub-int/2addr v5, v6

    iget v6, v4, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v8, v4, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v8

    if-le v5, v6, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    iget v5, v2, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v2, v2, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    sub-int/2addr v5, v2

    iget v2, v4, Lcom/color/commons/view/Linkify$LinkSpec;->end:I

    iget v4, v4, Lcom/color/commons/view/Linkify$LinkSpec;->start:I

    sub-int/2addr v2, v4

    if-ge v5, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_3

    .line 195
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method
