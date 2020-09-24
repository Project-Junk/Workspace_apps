.class public final Lcom/android/settings/security/trustagent/b;
.super Ljava/lang/Object;
.source "TrustAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/trustagent/b$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/security/trustagent/b;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    if-eqz p0, :cond_1

    .line 148
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/b$a;
    .locals 7

    const-string v0, "TrustAgentManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 154
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_d

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 159
    :cond_0
    new-instance v2, Lcom/android/settings/security/trustagent/b$a;

    invoke-direct {v2}, Lcom/android/settings/security/trustagent/b$a;-><init>()V

    .line 163
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v4, "android.service.trust.trustagent"

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    :try_start_1
    const-string p0, "Can\'t find android.service.trust.trustagent meta-data"

    .line 165
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 194
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v1

    .line 168
    :cond_2
    :try_start_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 169
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 171
    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 174
    :cond_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "trust-agent"

    .line 175
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string p0, "Meta-data does not start with trust-agent tag"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 194
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    return-object v1

    :cond_6
    :try_start_3
    const-string v5, "com.android.internal.R.styleable.TrustAgent"

    .line 180
    invoke-static {v5}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-virtual {p0, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string v4, "com.android.internal.R.styleable.TrustAgent_summary"

    .line 182
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/security/trustagent/b$a;->c:Ljava/lang/String;

    const-string v4, "com.android.internal.R.styleable.TrustAgent_title"

    .line 184
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    const-string v4, "com.android.internal.R.styleable.TrustAgent_settingsActivity"

    .line 185
    invoke-static {v4}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_7

    .line 194
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move-object p0, v1

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    move-object v4, v1

    goto :goto_1

    :catch_4
    move-exception p0

    move-object v4, v1

    goto :goto_3

    :catch_5
    move-exception p0

    move-object v4, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 195
    :cond_8
    throw p0

    :catch_6
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    if-eqz v3, :cond_9

    .line 194
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_5

    :catch_7
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_3
    if-eqz v3, :cond_9

    goto :goto_2

    :catch_8
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_4
    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    if-eqz p0, :cond_a

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_a
    if-eqz v4, :cond_b

    const/16 p0, 0x2f

    .line 200
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_b

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-nez v4, :cond_c

    goto :goto_6

    .line 204
    :cond_c
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_6
    iput-object v1, v2, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    return-object v2

    :cond_d
    :goto_7
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/trustagent/b$a;

    iget-object p0, p0, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 84
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.PROVIDE_TRUST_AGENT"

    .line 85
    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping agent because package "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not have permission android.permission.PROVIDE_TRUST_AGENT."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustAgentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/security/trustagent/b$a;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 111
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    sget-object v4, Lcom/android/settings/security/trustagent/b;->a:Landroid/content/Intent;

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p1

    const/16 v5, 0x10

    .line 119
    invoke-static {p0, v5, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 124
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    invoke-static {v4, v2}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-static {v2, v4}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/b$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 129
    iget-object v6, v5, Lcom/android/settings/security/trustagent/b$a;->a:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 130
    invoke-static {v4}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    .line 131
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p0, :cond_1

    const/4 v6, 0x0

    .line 135
    invoke-static {v4}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 134
    invoke-virtual {v1, v6, v4}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    .line 136
    iput-object p0, v5, Lcom/android/settings/security/trustagent/b$a;->d:Lcom/android/settingslib/g$a;

    .line 138
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method
